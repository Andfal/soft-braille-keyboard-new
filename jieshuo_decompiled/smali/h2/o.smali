.class public Lh2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private c:I

.field private d:Landroid/app/AlertDialog;

.field private e:Ljava/lang/String;

.field private f:Lcom/androlua/LuaEditor;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh2/o;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh2/o;->g:Z

    iput-object p1, p0, Lh2/o;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lh2/o;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEditView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllEditTextList(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object p1, p0, Lh2/o;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lh2/o;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lh2/o;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh2/o;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

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

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lh2/o;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lh2/o;->e:Ljava/lang/String;

    :cond_2
    new-instance v0, Lcom/androlua/LuaEditor;

    iget-object v1, p0, Lh2/o;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v1}, Lcom/androlua/LuaEditor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/o;->f:Lcom/androlua/LuaEditor;

    iget-object v1, p0, Lh2/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/androlua/LuaEditor;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lh2/o;->f:Lcom/androlua/LuaEditor;

    iget-object v1, p0, Lh2/o;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaEditor;->setSelection(I)V

    iget-object v0, p0, Lh2/o;->f:Lcom/androlua/LuaEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lh2/o;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/high16 v2, 0x7f080000

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f070356

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lh2/o;->f:Lcom/androlua/LuaEditor;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lh2/o;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_3

    const/16 v1, 0x7f0

    goto :goto_2

    :cond_3
    const/16 v1, 0x7da

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lh2/o;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_4
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lh2/o;->f:Lcom/androlua/LuaEditor;

    invoke-virtual {p1}, Lcom/androlua/LuaEditor;->getText()Ld2/f;

    move-result-object p1

    invoke-virtual {p1}, Ld2/f;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh2/o;->e:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh2/o;->g:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-boolean p1, p0, Lh2/o;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh2/o;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh2/o;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lh2/o;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
