.class abstract Lcom/noname81/lmt/InputDialog;
.super Landroid/app/AlertDialog$Builder;
.source "InputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mContext:Landroid/content/Context;

.field private final mInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p1, p0, Lcom/noname81/lmt/InputDialog;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0, p2}, Lcom/noname81/lmt/InputDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {p0, p3}, Lcom/noname81/lmt/InputDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 36
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/noname81/lmt/InputDialog;->mInput:Landroid/widget/EditText;

    .line 37
    invoke-virtual {p0, p2}, Lcom/noname81/lmt/InputDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    if-eqz p4, :cond_1

    .line 40
    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x2

    .line 41
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 42
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 45
    :cond_1
    sget p1, Lcom/noname81/lmt/R$string;->dialog_ok:I

    invoke-virtual {p0, p1, p0}, Lcom/noname81/lmt/InputDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 46
    sget p1, Lcom/noname81/lmt/R$string;->dialog_cancel:I

    invoke-virtual {p0, p1, p0}, Lcom/noname81/lmt/InputDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/noname81/lmt/InputDialog;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0, p2}, Lcom/noname81/lmt/InputDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    .line 60
    :goto_0
    invoke-virtual {p0, p3, p1, p0}, Lcom/noname81/lmt/InputDialog;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/noname81/lmt/InputDialog;->mInput:Landroid/widget/EditText;

    return-void
.end method

.method private onCancelClicked(Landroid/content/DialogInterface;)V
    .locals 0

    .line 65
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 70
    iget-object p2, p0, Lcom/noname81/lmt/InputDialog;->mInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/InputDialog;->onOkClicked(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 71
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/noname81/lmt/InputDialog;->onCancelClicked(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/noname81/lmt/InputDialog;->onOkClicked(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract onOkClicked(Ljava/lang/String;)Z
.end method
