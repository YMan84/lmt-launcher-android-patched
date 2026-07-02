package com.noname81.lmt;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class PieMenu extends FrameLayout {
    private static boolean DEBUG = false;
    private static final int MAX_LEVELS = 5;
    private static final String TAG = "LMT::PieMenu";
    private int mAnimationTime;
    private Point mCenter;
    private int[] mCounts;
    private PieItem mCurrentItem;
    private boolean mExpandTriggerArea;
    private int mIconColor;
    private List<PieItem> mItems;
    private PieItem mLastItem;
    private int mLevels;
    private boolean mLongpress;
    private Handler mLongpressHandler;
    private Runnable mLongpressRunnable;
    private int mNormalGradient;
    private Paint mNormalPaint;
    private boolean mOpen;
    private int mOutlineGradient;
    private Paint mOutlinePaint;
    private PieView mPiePointer;
    private int mPointerColor;
    private int mRadius;
    private int mRadiusInc;
    private boolean mRotateImages;
    private Paint mSelectedPaint;
    private SettingsValues mSettings;
    private Paint mShiftPaint;
    private int mSlop;
    private PieView mStatusInfo;
    private int mStatusInfoClockColor;
    private int mStatusInfoDimColor;
    private int mStatusInfoNotificationsColor;
    private Toaster mToaster;
    private int mTouchOffset;
    private Rect mWindow;

    public interface PieView {
        void activate();

        boolean drawBackground(Canvas canvas);

        boolean drawForeground(Canvas canvas);

        void layout(boolean z, Point point, int i, int i2, int i3, boolean z2, boolean z3, boolean z4);

        void onShrink();

        boolean onTouchEvent(int i, float f, float f2, float f3, float f4, PointF pointF);
    }

    private float getDegrees(double d) {
        return (float) (270.0d - ((d * 180.0d) / 3.141592653589793d));
    }

    public PieMenu(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public PieMenu(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public PieMenu(Context context) {
        super(context);
        init(context);
    }

    static void setDebug(boolean z) {
        DEBUG = z;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void init(android.content.Context r18) {
        /*
            Method dump skipped, instruction units count: 1418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.noname81.lmt.PieMenu.init(android.content.Context):void");
    }

    public void addItem(PieItem pieItem) {
        this.mItems.add(pieItem);
        int level = pieItem.getLevel();
        this.mLevels = Math.max(this.mLevels, level);
        int[] iArr = this.mCounts;
        iArr[level] = iArr[level] + 1;
    }

    public void removeItem(PieItem pieItem) {
        this.mItems.remove(pieItem);
    }

    public void activatePiePointer() {
        this.mPiePointer.activate();
    }

    public void clearItems() {
        this.mItems.clear();
        this.mLevels = 0;
        for (int i = 0; i < 5; i++) {
            this.mCounts[i] = 0;
        }
    }

    public void relayoutPie() {
        show(true, true);
    }

    private boolean onTheLeft() {
        return this.mCenter.x - this.mWindow.left <= this.mSlop;
    }

    private boolean onTheRight() {
        return this.mCenter.x >= (this.mWindow.right - this.mWindow.left) - this.mSlop;
    }

    private boolean onTheBottom() {
        return (onTheLeft() || onTheRight() || this.mCenter.y < (this.mWindow.bottom - this.mWindow.top) - this.mSlop) ? false : true;
    }

    private boolean isValidPosition(int i, int i2) {
        return onTheLeft() || onTheRight() || onTheBottom();
    }

    public void show(boolean z, boolean z2) {
        if (z) {
            animateOpen();
            layoutPie();
            PieView pieView = this.mPiePointer;
            if (pieView != null) {
                pieView.layout(true, this.mCenter, this.mRadius, this.mRadiusInc, this.mLevels, onTheLeft(), onTheBottom(), z2);
            }
            PieView pieView2 = this.mStatusInfo;
            if (pieView2 != null) {
                pieView2.layout(true, this.mCenter, this.mRadius, this.mRadiusInc, this.mLevels, onTheLeft(), onTheBottom(), z2);
            }
        } else {
            this.mCurrentItem = null;
            this.mLastItem = null;
            PieView pieView3 = this.mPiePointer;
            if (pieView3 != null) {
                pieView3.layout(false, this.mCenter, this.mRadius, this.mRadiusInc, this.mLevels, onTheLeft(), onTheBottom(), z2);
            }
            PieView pieView4 = this.mStatusInfo;
            if (pieView4 != null) {
                pieView4.layout(false, this.mCenter, this.mRadius, this.mRadiusInc, this.mLevels, onTheLeft(), onTheBottom(), z2);
            }
        }
        this.mOpen = z;
        invalidate();
    }

    private void animateOpen() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.noname81.lmt.PieMenu.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                for (PieItem pieItem : PieMenu.this.mItems) {
                    pieItem.setAnimationAngle((1.0f - valueAnimator.getAnimatedFraction()) * (-pieItem.getStart()));
                    pieItem.setAlpha((int) (valueAnimator.getAnimatedFraction() * 255.0f));
                }
                PieMenu.this.invalidate();
            }
        });
        valueAnimatorOfFloat.setDuration(this.mAnimationTime * 2);
        valueAnimatorOfFloat.start();
    }

    private void setCenter(int i, int i2) {
        this.mCenter.x = i;
        this.mCenter.y = i2;
        if (onTheLeft()) {
            this.mCenter.x = 0;
        } else if (onTheRight()) {
            this.mCenter.x = this.mWindow.right - this.mWindow.left;
        } else if (onTheBottom()) {
            this.mCenter.y = this.mWindow.bottom - this.mWindow.top;
            if (this.mSettings.loadPiePos() != 3 && this.mSettings.loadPiePos() != 8) {
                this.mCenter.x = (this.mWindow.right - this.mWindow.left) / 2;
            }
        }
        if (DEBUG) {
            Log.d(TAG, "setCenter " + this.mCenter.x + "," + this.mCenter.y + " inx:" + i + " iny:" + i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectImages(int i) {
        for (int i2 = 0; i2 < this.mItems.size(); i2++) {
            this.mItems.get(i2).selectImage(i);
        }
    }

    private void fireClick(PieItem pieItem) {
        if (this.mSettings.loadPieVibrate() >= 3) {
            this.mToaster.vibratePie();
        }
        if (pieItem == null || pieItem.getView() == null) {
            return;
        }
        if (this.mLongpress) {
            pieItem.getView().performLongClick();
        } else {
            pieItem.getView().performClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireHover(PieItem pieItem) {
        if (pieItem == null || pieItem.getView() == null) {
            return;
        }
        if (this.mLongpress) {
            pieItem.getView().dispatchKeyEvent(new KeyEvent(0, 40));
        } else {
            pieItem.getView().dispatchKeyEvent(new KeyEvent(0, 36));
        }
    }

    private void setLongpressTimer(PointF pointF) {
        if (pointF == null || this.mRadius - this.mTouchOffset > pointF.y) {
            Runnable runnable = this.mLongpressRunnable;
            if (runnable != null) {
                this.mLongpressHandler.removeCallbacks(runnable);
                this.mLongpressRunnable = null;
                this.mLongpress = false;
                selectImages(0);
                postInvalidate();
                return;
            }
            return;
        }
        if (this.mLongpressRunnable == null) {
            Runnable runnable2 = new Runnable() { // from class: com.noname81.lmt.PieMenu.1LongpressRunnable
                @Override // java.lang.Runnable
                public void run() {
                    if (PieMenu.this.mSettings.loadPieVibrate() > 0) {
                        PieMenu.this.mToaster.vibratePie();
                    }
                    PieMenu.this.mLongpress = true;
                    PieMenu pieMenu = PieMenu.this;
                    pieMenu.fireHover(pieMenu.mCurrentItem);
                    PieMenu.this.selectImages(1);
                    PieMenu.this.postInvalidate();
                }
            };
            this.mLongpressRunnable = runnable2;
            this.mLongpressHandler.postDelayed(runnable2, this.mSettings.loadPieLongpress());
        }
    }

    private void layoutPie() {
        int i;
        float f;
        float f2;
        float f3;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        float fLoadPieStartGap = this.mSettings.loadPieStartGap() / 100.0f;
        float f4 = onTheBottom() ? (-1.5707964f) + fLoadPieStartGap : fLoadPieStartGap;
        float fLoadPieSliceGap = this.mSettings.loadPieSliceGap() / 10.0f;
        int i7 = (int) (5.0f * fLoadPieSliceGap);
        int i8 = this.mRadius;
        int i9 = i8 + i7;
        int i10 = (i8 + this.mRadiusInc) - i7;
        int i11 = i10;
        int i12 = i9;
        for (int i13 = 0; i13 < this.mLevels; i13 = i) {
            i = i13 + 1;
            double d = fLoadPieStartGap * 2.0f;
            Double.isNaN(d);
            float f5 = ((float) (3.141592653589793d - d)) / this.mCounts[i];
            float f6 = f5 / 2.0f;
            Path pathMakeSlice = makeSlice(getDegrees(0.0d), getDegrees(f5), i11, i12, this.mCenter, fLoadPieSliceGap);
            float f7 = f4 + f6;
            for (PieItem pieItem : this.mItems) {
                if (pieItem.getLevel() == i) {
                    View view = pieItem.getView();
                    if (view != null) {
                        view.measure(view.getLayoutParams().width, view.getLayoutParams().height);
                        int measuredWidth = view.getMeasuredWidth();
                        int measuredHeight = view.getMeasuredHeight();
                        f = fLoadPieStartGap;
                        f2 = f4;
                        double d2 = (((i11 - i12) * 2) / 3) + i12;
                        f3 = fLoadPieSliceGap;
                        i2 = i11;
                        double d3 = f7;
                        double dSin = Math.sin(d3);
                        Double.isNaN(d2);
                        i3 = i12;
                        i4 = i;
                        int i14 = (int) (d2 * dSin);
                        int i15 = this.mCenter.y;
                        double dCos = Math.cos(d3);
                        Double.isNaN(d2);
                        int i16 = (i15 - ((int) (d2 * dCos))) - (measuredHeight / 2);
                        if (onTheLeft()) {
                            i5 = this.mCenter.x + i14;
                            i6 = measuredWidth / 2;
                        } else {
                            i5 = this.mCenter.x - i14;
                            i6 = measuredWidth / 2;
                        }
                        int i17 = i5 - i6;
                        view.layout(i17, i16, measuredWidth + i17, measuredHeight + i16);
                    } else {
                        f = fLoadPieStartGap;
                        f2 = f4;
                        f3 = fLoadPieSliceGap;
                        i2 = i11;
                        i3 = i12;
                        i4 = i;
                    }
                    pieItem.setGeometry(f7 - f6, f5, i3, i2, pathMakeSlice);
                    pieItem.setColor(this.mIconColor);
                    f7 += f5;
                } else {
                    f = fLoadPieStartGap;
                    f2 = f4;
                    f3 = fLoadPieSliceGap;
                    i2 = i11;
                    i3 = i12;
                    i4 = i;
                }
                fLoadPieStartGap = f;
                f4 = f2;
                fLoadPieSliceGap = f3;
                i11 = i2;
                i12 = i3;
                i = i4;
            }
            int i18 = this.mRadiusInc;
            i12 += i18;
            i11 += i18;
        }
        if (this.mNormalGradient != -2) {
            this.mNormalPaint.setShader(new RadialGradient(this.mCenter.x, this.mCenter.y, this.mRadius + (this.mRadiusInc * this.mLevels), this.mNormalPaint.getColor(), this.mNormalGradient, Shader.TileMode.CLAMP));
        }
        if (this.mOutlineGradient != -2) {
            this.mOutlinePaint.setShader(new RadialGradient(this.mCenter.x, this.mCenter.y, this.mRadius + (this.mRadiusInc * this.mLevels), this.mOutlinePaint.getColor(), this.mOutlineGradient, Shader.TileMode.CLAMP));
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        PieView pieView;
        PieView pieView2;
        if (this.mOpen) {
            PieView pieView3 = this.mPiePointer;
            boolean zDrawBackground = pieView3 != null ? pieView3.drawBackground(canvas) : false;
            if (!zDrawBackground && (pieView2 = this.mStatusInfo) != null) {
                zDrawBackground = pieView2.drawBackground(canvas);
            }
            if (!zDrawBackground) {
                for (PieItem pieItem : this.mItems) {
                    int iSave = canvas.save();
                    if (onTheLeft()) {
                        canvas.scale(-1.0f, 1.0f);
                    }
                    canvas.rotate(getDegrees(pieItem.getStartAngle()) - 270.0f, this.mCenter.x, this.mCenter.y);
                    drawPath(canvas, pieItem.getPath(), pieItem.isSelected());
                    canvas.restoreToCount(iSave);
                    drawItem(canvas, pieItem);
                }
            }
            PieView pieView4 = this.mPiePointer;
            if ((pieView4 != null ? pieView4.drawForeground(canvas) : false) || (pieView = this.mStatusInfo) == null) {
                return;
            }
            pieView.drawForeground(canvas);
        }
    }

    private void drawItem(Canvas canvas, PieItem pieItem) {
        View view = pieItem.getView();
        int iSave = canvas.save();
        if (this.mRotateImages) {
            float degrees = getDegrees(pieItem.getStartAngle() + (pieItem.getSweep() / 2.0f)) - 270.0f;
            canvas.translate(view.getLeft() + (view.getWidth() / 2.0f), view.getTop() + (view.getHeight() / 2.0f));
            if (onTheLeft()) {
                degrees = -degrees;
            }
            canvas.rotate(degrees);
            canvas.translate((-view.getWidth()) / 2.0f, (-view.getHeight()) / 2.0f);
        } else {
            canvas.translate(view.getLeft(), view.getTop());
        }
        view.draw(canvas);
        canvas.restoreToCount(iSave);
    }

    private void drawPath(Canvas canvas, Path path, boolean z) {
        float strokeWidth = this.mShiftPaint.getStrokeWidth();
        if (strokeWidth > 0.0f) {
            canvas.drawPath(path, this.mShiftPaint);
            float f = (-strokeWidth) / 2.0f;
            canvas.translate(f, f);
        }
        canvas.drawPath(path, z ? this.mSelectedPaint : this.mNormalPaint);
        if (this.mOutlinePaint.getAlpha() > 0) {
            canvas.drawPath(path, this.mOutlinePaint);
        }
    }

    private Path makeSlice(float f, float f2, int i, int i2, Point point, float f3) {
        RectF rectF = new RectF(point.x - i, point.y - i, point.x + i, point.y + i);
        RectF rectF2 = new RectF(point.x - i2, point.y - i2, point.x + i2, point.y + i2);
        Path path = new Path();
        float f4 = f - f3;
        float f5 = f2 + f3;
        path.arcTo(rectF, f4, f5 - f4, true);
        path.arcTo(rectF2, f5, f4 - f5);
        path.close();
        return path;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        PieView pieView;
        PieView pieView2;
        getWindowVisibleDisplayFrame(this.mWindow);
        if (DEBUG) {
            Log.d(TAG, "onTouchEvent base: height: " + getHeight() + ", width: " + getWidth() + ", window:" + this.mWindow);
        }
        float rawX = motionEvent.getRawX() - this.mWindow.left;
        float rawY = motionEvent.getRawY() - this.mWindow.top;
        if (DEBUG) {
            Log.d(TAG, "onTouchEvent patched:" + rawX + "," + rawY + " raw:" + motionEvent.getRawX() + "," + motionEvent.getRawY());
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            int i = (int) rawX;
            int i2 = (int) rawY;
            setCenter(i, i2);
            if (isValidPosition(i, i2)) {
                show(true, false);
                return true;
            }
        } else if (1 == actionMasked) {
            if (this.mOpen) {
                PointF polar = getPolar(rawX, rawY);
                PieView pieView3 = this.mPiePointer;
                boolean zOnTouchEvent = pieView3 != null ? pieView3.onTouchEvent(actionMasked, rawX, rawY, this.mWindow.left, this.mWindow.top, polar) : false;
                if (!zOnTouchEvent && (pieView2 = this.mStatusInfo) != null) {
                    pieView2.onTouchEvent(actionMasked, rawX, rawY, this.mWindow.left, this.mWindow.top, polar);
                }
                PieItem pieItem = this.mCurrentItem;
                deselect();
                show(false, false);
                if (!zOnTouchEvent && pieItem != null) {
                    fireClick(pieItem);
                }
                setLongpressTimer(null);
                return true;
            }
        } else if (3 == actionMasked) {
            if (this.mOpen) {
                show(false, false);
                deselect();
                return false;
            }
        } else if (2 == actionMasked && this.mOpen) {
            PointF polar2 = getPolar(rawX, rawY);
            PieView pieView4 = this.mPiePointer;
            boolean zOnTouchEvent2 = pieView4 != null ? pieView4.onTouchEvent(actionMasked, rawX, rawY, this.mWindow.left, this.mWindow.top, polar2) : false;
            if (!zOnTouchEvent2 && (pieView = this.mStatusInfo) != null) {
                zOnTouchEvent2 = pieView.onTouchEvent(actionMasked, rawX, rawY, this.mWindow.left, this.mWindow.top, polar2);
            }
            if (zOnTouchEvent2) {
                deselect();
                setLongpressTimer(null);
                invalidate();
            } else {
                setLongpressTimer(polar2);
                PieItem pieItemFindItem = findItem(polar2, this.mExpandTriggerArea);
                if (this.mCurrentItem != pieItemFindItem) {
                    onEnter(pieItemFindItem);
                    invalidate();
                }
            }
            return true;
        }
        return false;
    }

    public void onShrink() {
        PieView pieView = this.mPiePointer;
        if (pieView != null) {
            pieView.onShrink();
        }
        PieView pieView2 = this.mStatusInfo;
        if (pieView2 != null) {
            pieView2.onShrink();
        }
    }

    private void onEnter(PieItem pieItem) {
        PieItem pieItem2 = this.mCurrentItem;
        if (pieItem2 != null) {
            pieItem2.setSelected(false);
            this.mLastItem = this.mCurrentItem;
        }
        if (pieItem != null) {
            if (this.mSettings.loadPieVibrate() == 2 || this.mSettings.loadPieVibrate() >= 4) {
                this.mToaster.vibratePie();
            }
            playSoundEffect(0);
            pieItem.setSelected(true);
            fireHover(pieItem);
        }
        if (this.mLastItem == pieItem && this.mSettings.loadPieMultiCommand() > 0) {
            fireClick(pieItem);
        }
        this.mCurrentItem = pieItem;
    }

    private void deselect() {
        PieItem pieItem = this.mCurrentItem;
        if (pieItem != null) {
            pieItem.setSelected(false);
        }
        this.mCurrentItem = null;
    }

    private PointF getPolar(float f, float f2) {
        PointF pointF = new PointF();
        pointF.x = 1.5707964f;
        float f3 = this.mCenter.x - f;
        if (this.mCenter.x < this.mSlop) {
            f3 = -f3;
        }
        float f4 = this.mCenter.y - f2;
        pointF.y = (float) Math.sqrt((f3 * f3) + (f4 * f4));
        if (f4 > 0.0f) {
            pointF.x = (float) Math.asin(f3 / pointF.y);
        } else if (f4 < 0.0f) {
            pointF.x = (float) (3.141592653589793d - Math.asin(f3 / pointF.y));
        }
        return pointF;
    }

    private PieItem findItem(PointF pointF, boolean z) {
        for (PieItem pieItem : this.mItems) {
            if (pieItem.getLevel() == this.mLevels && z) {
                if (pieItem.getInnerRadius() - this.mTouchOffset < pointF.y && pieItem.getStartAngle() < pointF.x && pieItem.getStartAngle() + pieItem.getSweep() > pointF.x) {
                    return pieItem;
                }
            } else if (pieItem.getInnerRadius() - this.mTouchOffset < pointF.y && pieItem.getOuterRadius() - this.mTouchOffset > pointF.y && pieItem.getStartAngle() < pointF.x && pieItem.getStartAngle() + pieItem.getSweep() > pointF.x) {
                return pieItem;
            }
        }
        return null;
    }

    public static int manipulateColor(int i, float f) {
        return Color.argb(Color.alpha(i), Math.min(Math.round(Color.red(i) * f), 255), Math.min(Math.round(Color.green(i) * f), 255), Math.min(Math.round(Color.blue(i) * f), 255));
    }
}
