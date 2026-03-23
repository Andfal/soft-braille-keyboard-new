.class public Lcom/nirenr/talkman/dialog/EditDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/EditText;

.field private final c:Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;

.field private d:Landroid/widget/Button;

.field private e:Landroid/app/AlertDialog;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->f:I

    iput v0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->g:I

    new-instance v1, Lcom/nirenr/talkman/dialog/EditDialog$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nirenr/talkman/dialog/EditDialog$a;-><init>(Lcom/nirenr/talkman/dialog/EditDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    const v2, 0x7f070251

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    :cond_0
    const v2, 0x7f070304

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    :cond_1
    iput-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/nirenr/talkman/dialog/EditDialog;->c:Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f070095

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x104000a

    invoke-virtual {p2, p3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 p3, 0x10

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    if-eqz p2, :cond_4

    instance-of p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz p1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x16

    if-lt p1, p3, :cond_3

    const/16 p1, 0x7f0

    goto :goto_0

    :cond_3
    const/16 p1, 0x7da

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/Window;->setType(I)V

    :cond_4
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    const p3, 0x7f070627

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/nirenr/talkman/dialog/EditDialog$b;

    invoke-direct {p4, p0, p1}, Lcom/nirenr/talkman/dialog/EditDialog$b;-><init>(Lcom/nirenr/talkman/dialog/EditDialog;Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/4 p1, -0x3

    invoke-virtual {p2, p1, p3, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :try_start_0
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    const/4 p4, 0x3

    invoke-static {p2, v0, p3, p4}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    const/4 v0, -0x2

    invoke-static {p2, v0, p3, p4}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    invoke-static {p2, p1, p3, p4}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->f:I

    iput v0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->g:I

    new-instance v1, Lcom/nirenr/talkman/dialog/EditDialog$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/nirenr/talkman/dialog/EditDialog$c;-><init>(Lcom/nirenr/talkman/dialog/EditDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    const v2, 0x7f070251

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    :cond_0
    const v2, 0x7f070304

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    :cond_1
    iput-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/nirenr/talkman/dialog/EditDialog;->c:Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Landroid/app/AlertDialog$Builder;

    invoke-direct {p3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f070095

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    const/16 p3, 0x10

    invoke-virtual {p2, p3}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_2
    if-eqz p2, :cond_4

    instance-of p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-eqz p1, :cond_4

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x16

    if-lt p1, p3, :cond_3

    const/16 p1, 0x7f0

    goto :goto_0

    :cond_3
    const/16 p1, 0x7da

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/Window;->setType(I)V

    :cond_4
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    const p3, 0x7f070627

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/nirenr/talkman/dialog/EditDialog$d;

    invoke-direct {p4, p0, p1}, Lcom/nirenr/talkman/dialog/EditDialog$d;-><init>(Lcom/nirenr/talkman/dialog/EditDialog;Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const/4 p1, -0x3

    invoke-virtual {p2, p1, p3, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :try_start_0
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    const/4 p4, 0x3

    invoke-static {p2, v0, p3, p4}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    const/4 p5, -0x2

    invoke-static {p2, p5, p3, p4}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p3

    invoke-virtual {p3}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    invoke-static {p2, p1, p3, p4}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->d:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/EditDialog;)Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->c:Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/EditDialog;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->f:I

    return p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/EditDialog;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->g:I

    return p0
.end method


# virtual methods
.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public h(I)V
    .locals 4

    iput p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->f:I

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public i(II)V
    .locals 3

    iput p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->f:I

    iput p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->g:I

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p2, 0x0

    aput-object v2, v1, p2

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->d:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog;->c:Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;->onCallback(Ljava/lang/String;)V

    return-void
.end method
