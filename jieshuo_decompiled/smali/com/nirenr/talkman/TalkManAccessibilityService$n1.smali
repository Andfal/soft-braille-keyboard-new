.class Lcom/nirenr/talkman/TalkManAccessibilityService$n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->showNotificationBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/widget/ArrayListAdapter;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/app/Dialog;Landroid/widget/ArrayListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->b:Landroid/widget/ArrayListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->a:Landroid/app/Dialog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0704a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070031

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->b:Landroid/widget/ArrayListAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayListAdapter;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$n1;->b:Landroid/widget/ArrayListAdapter;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p3()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ArrayListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method
