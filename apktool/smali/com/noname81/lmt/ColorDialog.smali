.class abstract Lcom/noname81/lmt/ColorDialog;
.super Landroid/app/AlertDialog$Builder;
.source "ColorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAlphaLabel:Landroid/widget/TextView;

.field private mAlphaSeek:Landroid/widget/SeekBar;

.field private mAlphaValue:Landroid/widget/TextView;

.field private mBlueLabel:Landroid/widget/TextView;

.field private mBlueSeek:Landroid/widget/SeekBar;

.field private mBlueValue:Landroid/widget/TextView;

.field private mColorLast:Landroid/widget/Button;

.field private mColorNext:Landroid/widget/Button;

.field private mColorPreview:Landroid/widget/Button;

.field private mColorSelectionCurrent:I

.field private mColorSelectionStrings:[Ljava/lang/String;

.field private mColorSelectionValues:[I

.field private mColorString:Landroid/widget/EditText;

.field private mGreenLabel:Landroid/widget/TextView;

.field private mGreenSeek:Landroid/widget/SeekBar;

.field private mGreenValue:Landroid/widget/TextView;

.field private mRedLabel:Landroid/widget/TextView;

.field private mRedSeek:Landroid/widget/SeekBar;

.field private mRedValue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 63
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/noname81/lmt/ColorDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string p2, "layout_inflater"

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 68
    sget p2, Lcom/noname81/lmt/R$layout;->color:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/noname81/lmt/ColorDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 71
    sget p2, Lcom/noname81/lmt/R$id;->alpha_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaLabel:Landroid/widget/TextView;

    .line 72
    sget p2, Lcom/noname81/lmt/R$id;->alpha_value:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaValue:Landroid/widget/TextView;

    .line 73
    sget p2, Lcom/noname81/lmt/R$id;->alpha_seek:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaSeek:Landroid/widget/SeekBar;

    .line 74
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaLabel:Landroid/widget/TextView;

    sget v0, Lcom/noname81/lmt/R$string;->alpha_string:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaSeek:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 77
    sget p2, Lcom/noname81/lmt/R$id;->red_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mRedLabel:Landroid/widget/TextView;

    .line 78
    sget p2, Lcom/noname81/lmt/R$id;->red_value:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mRedValue:Landroid/widget/TextView;

    .line 79
    sget p2, Lcom/noname81/lmt/R$id;->red_seek:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mRedSeek:Landroid/widget/SeekBar;

    .line 80
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mRedLabel:Landroid/widget/TextView;

    sget v0, Lcom/noname81/lmt/R$string;->red_string:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mRedSeek:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 83
    sget p2, Lcom/noname81/lmt/R$id;->green_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mGreenLabel:Landroid/widget/TextView;

    .line 84
    sget p2, Lcom/noname81/lmt/R$id;->green_value:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mGreenValue:Landroid/widget/TextView;

    .line 85
    sget p2, Lcom/noname81/lmt/R$id;->green_seek:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mGreenSeek:Landroid/widget/SeekBar;

    .line 86
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mGreenLabel:Landroid/widget/TextView;

    sget v0, Lcom/noname81/lmt/R$string;->green_string:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mGreenSeek:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 89
    sget p2, Lcom/noname81/lmt/R$id;->blue_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mBlueLabel:Landroid/widget/TextView;

    .line 90
    sget p2, Lcom/noname81/lmt/R$id;->blue_value:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mBlueValue:Landroid/widget/TextView;

    .line 91
    sget p2, Lcom/noname81/lmt/R$id;->blue_seek:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mBlueSeek:Landroid/widget/SeekBar;

    .line 92
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mBlueLabel:Landroid/widget/TextView;

    sget v0, Lcom/noname81/lmt/R$string;->blue_string:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mBlueSeek:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    sget p2, Lcom/noname81/lmt/R$id;->color_preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorPreview:Landroid/widget/Button;

    .line 96
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget p2, Lcom/noname81/lmt/R$id;->color_last:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorLast:Landroid/widget/Button;

    const-string v0, "<"

    .line 99
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorLast:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    array-length p2, p3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorLast:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    :cond_0
    sget p2, Lcom/noname81/lmt/R$id;->color_next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorNext:Landroid/widget/Button;

    const-string v2, ">"

    .line 104
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorNext:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    array-length p2, p3

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorNext:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    :cond_1
    sget p2, Lcom/noname81/lmt/R$id;->color_string:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorString:Landroid/widget/EditText;

    .line 109
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 111
    iput p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    .line 112
    iput-object p3, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionStrings:[Ljava/lang/String;

    .line 113
    array-length p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    .line 114
    invoke-direct {p0, p4}, Lcom/noname81/lmt/ColorDialog;->parseColorString(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/noname81/lmt/ColorDialog;->updateColorPreviews()V

    .line 117
    sget p1, Lcom/noname81/lmt/R$string;->dialog_ok:I

    invoke-virtual {p0, p1, p0}, Lcom/noname81/lmt/ColorDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    sget p1, Lcom/noname81/lmt/R$string;->dialog_cancel:I

    invoke-virtual {p0, p1, p0}, Lcom/noname81/lmt/ColorDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private onCancelClicked(Landroid/content/DialogInterface;)V
    .locals 0

    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private parseColorString(Ljava/lang/String;)V
    .locals 4

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v0, " "

    const-string v1, ""

    .line 193
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 196
    array-length v1, p1

    if-le v1, v0, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    goto :goto_1

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    aput v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :catch_0
    iget-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    :goto_2
    return-void
.end method

.method private updateColorPreviews()V
    .locals 8

    .line 212
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    iget v1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaSeek:Landroid/widget/SeekBar;

    const/16 v3, 0xff

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 215
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mRedSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 217
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mRedValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mRedSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mGreenSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 219
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mGreenValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mGreenSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mBlueSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 221
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mBlueValue:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mBlueSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mColorPreview:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaValue:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaSeek:Landroid/widget/SeekBar;

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 226
    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mRedValue:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mRedSeek:Landroid/widget/SeekBar;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 228
    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mGreenValue:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mGreenSeek:Landroid/widget/SeekBar;

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 230
    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mBlueValue:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mBlueSeek:Landroid/widget/SeekBar;

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 232
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mColorPreview:Landroid/widget/Button;

    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    iget v4, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mColorPreview:Landroid/widget/Button;

    iget-object v3, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionStrings:[Ljava/lang/String;

    iget v4, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 241
    :goto_1
    iget-object v5, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    array-length v5, v5

    if-ge v3, v5, :cond_3

    if-eqz v3, :cond_1

    const-string v5, ","

    .line 242
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_1
    iget-object v5, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    aget v5, v5, v3

    if-eq v5, v2, :cond_2

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 245
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    aget v5, v5, v3

    .line 246
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    aget v5, v5, v3

    .line 247
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    aget v5, v5, v3

    .line 248
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v4, v7

    const-string v5, "#%02x%02x%02x%02x"

    .line 244
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 253
    iget-object v1, p0, Lcom/noname81/lmt/ColorDialog;->mColorString:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 127
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorString:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/ColorDialog;->onOkClicked(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 131
    invoke-direct {p0, p1}, Lcom/noname81/lmt/ColorDialog;->onCancelClicked(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/ColorDialog;->onOkClicked(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/noname81/lmt/R$id;->color_last:I

    if-ne v0, v1, :cond_1

    .line 169
    iget p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionStrings:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 171
    iput p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    .line 172
    :goto_0
    invoke-direct {p0}, Lcom/noname81/lmt/ColorDialog;->updateColorPreviews()V

    goto :goto_3

    .line 174
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/noname81/lmt/R$id;->color_next:I

    if-ne p1, v0, :cond_4

    .line 175
    iget p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionStrings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    if-lt p1, v1, :cond_2

    iput v2, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    .line 176
    :goto_1
    iget p1, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    array-length v0, v0

    if-lt p1, v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    move v2, p1

    :goto_2
    iput v2, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    .line 177
    invoke-direct {p0}, Lcom/noname81/lmt/ColorDialog;->updateColorPreviews()V

    :cond_4
    :goto_3
    return-void
.end method

.method public abstract onOkClicked(Ljava/lang/String;)Z
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_4

    .line 142
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    sget v0, Lcom/noname81/lmt/R$id;->alpha_seek:I

    if-ne p3, v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaValue:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    sget v0, Lcom/noname81/lmt/R$id;->red_seek:I

    if-ne p3, v0, :cond_1

    .line 146
    iget-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mRedValue:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p3

    sget v0, Lcom/noname81/lmt/R$id;->green_seek:I

    if-ne p3, v0, :cond_2

    .line 149
    iget-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mGreenValue:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    sget p3, Lcom/noname81/lmt/R$id;->blue_seek:I

    if-ne p1, p3, :cond_3

    .line 152
    iget-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mBlueValue:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/noname81/lmt/ColorDialog;->mAlphaSeek:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mRedSeek:Landroid/widget/SeekBar;

    .line 157
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p2

    iget-object p3, p0, Lcom/noname81/lmt/ColorDialog;->mGreenSeek:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    iget-object v0, p0, Lcom/noname81/lmt/ColorDialog;->mBlueSeek:Landroid/widget/SeekBar;

    .line 158
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 156
    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 159
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorPreview:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 160
    iget-object p2, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionValues:[I

    iget p3, p0, Lcom/noname81/lmt/ColorDialog;->mColorSelectionCurrent:I

    aput p1, p2, p3

    .line 163
    invoke-direct {p0}, Lcom/noname81/lmt/ColorDialog;->updateColorPreviews()V

    :cond_4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
