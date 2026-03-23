.class Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j0"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/widget/EditText;

.field private final c:Ljava/lang/String;

.field private d:Landroid/app/AlertDialog;

.field final synthetic e:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V
    .locals 2

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->e:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->a:I

    new-instance v0, Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->d:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->e:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0702fc

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b:Landroid/widget/EditText;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$b;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->d:Landroid/app/AlertDialog;

    new-instance v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$c;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$c;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->e:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->a:I

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->e:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->H(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->e:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->a:I

    invoke-static {p1, p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->v(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    return-void
.end method
