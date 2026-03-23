.class Lcom/nirenr/talkman/dialog/a$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/dialog/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field private final a:Landroid/widget/EditText;

.field private b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/nirenr/talkman/dialog/a;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/dialog/a;)V
    .locals 1

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/a$j;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/EditText;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/a$j;->a:Landroid/widget/EditText;

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/a$j;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/a$j;->b:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/a$j;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/a$j;->a:Landroid/widget/EditText;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$j;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/a$j;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/a$j;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$j;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$j;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$j;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$j;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/a$j$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/a$j$a;-><init>(Lcom/nirenr/talkman/dialog/a$j;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/a$j;->c:Lcom/nirenr/talkman/dialog/a;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/a;->d(Lcom/nirenr/talkman/dialog/a;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/a$j$b;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/dialog/a$j$b;-><init>(Lcom/nirenr/talkman/dialog/a$j;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
