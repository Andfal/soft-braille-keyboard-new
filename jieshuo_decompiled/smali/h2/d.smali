.class public Lh2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:I

.field private c:Landroid/app/AlertDialog;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh2/d;->b:I

    iput-object p1, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method static bridge synthetic a(Lh2/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic b(Lh2/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lh2/d;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 4

    iget-object v0, p0, Lh2/d;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllTextList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh2/d;->d:Ljava/lang/String;

    :cond_1
    new-instance v0, Lcom/androlua/LuaEditor;

    iget-object v1, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Lcom/androlua/LuaEditor;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lh2/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/high16 v3, 0x7f080000

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07062e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lh2/d$a;

    invoke-direct {v1, p0}, Lh2/d$a;-><init>(Lh2/d;)V

    const v2, 0x7f070627

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lh2/d;->c:Landroid/app/AlertDialog;

    const/4 v1, 0x3

    :try_start_0
    iget-object v2, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, -0x1

    invoke-static {v0, v3, v2, v1}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object v0, p0, Lh2/d;->c:Landroid/app/AlertDialog;

    iget-object v2, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, -0x2

    invoke-static {v0, v3, v2, v1}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    iget-object v0, p0, Lh2/d;->c:Landroid/app/AlertDialog;

    iget-object v2, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, -0x3

    invoke-static {v0, v3, v2, v1}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lh2/d;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    const/16 v1, 0x7f0

    goto :goto_2

    :cond_2
    const/16 v1, 0x7da

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lh2/d;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iput p2, p0, Lh2/d;->b:I

    new-instance p1, Lcom/nirenr/talkman/dialog/f;

    iget-object p2, p0, Lh2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v0, p0, Lh2/d;->d:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/nirenr/talkman/dialog/f;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/f;->q()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
