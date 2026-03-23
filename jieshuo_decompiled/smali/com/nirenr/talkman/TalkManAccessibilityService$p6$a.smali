.class Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$p6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$p6;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$p6;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$p6;

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$p6;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$p6;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lk2/f;->q(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$p6;

    iget-object p1, p1, Lcom/nirenr/talkman/TalkManAccessibilityService$p6;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->f1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f07045f

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$p6$a;)V

    const v1, 0x104000a

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
