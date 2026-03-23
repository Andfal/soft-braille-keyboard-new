.class Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$r1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/androlua/LuaDialog;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/nirenr/talkman/TalkManAccessibilityService$r1;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$r1;Lcom/androlua/LuaDialog;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;->d:Lcom/nirenr/talkman/TalkManAccessibilityService$r1;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;->a:Lcom/androlua/LuaDialog;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;->a:Lcom/androlua/LuaDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    new-instance p1, Landroid/widget/EditText;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p3, 0x7f07024f

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a$b;

    invoke-direct {p3, p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a$b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;Landroid/widget/EditText;)V

    const p4, 0x7f070019

    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const p3, 0x7f070095

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a$a;

    invoke-direct {p3, p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$r1$a;Landroid/widget/EditText;)V

    const p1, 0x7f07001a

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
