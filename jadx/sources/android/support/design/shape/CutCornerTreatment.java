package android.support.design.shape;

/* JADX INFO: loaded from: classes.dex */
public class CutCornerTreatment extends CornerTreatment {
    private final float size;

    public CutCornerTreatment(float f) {
        this.size = f;
    }

    @Override // android.support.design.shape.CornerTreatment
    public void getCornerPath(float f, float f2, ShapePath shapePath) {
        shapePath.reset(0.0f, this.size * f2);
        double d = f;
        double dSin = Math.sin(d);
        double d2 = this.size;
        Double.isNaN(d2);
        double d3 = f2;
        Double.isNaN(d3);
        double dCos = Math.cos(d);
        double d4 = this.size;
        Double.isNaN(d4);
        Double.isNaN(d3);
        shapePath.lineTo((float) (dSin * d2 * d3), (float) (dCos * d4 * d3));
    }
}
