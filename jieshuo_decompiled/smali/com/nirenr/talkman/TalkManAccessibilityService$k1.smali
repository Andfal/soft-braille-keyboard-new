.class Lcom/nirenr/talkman/TalkManAccessibilityService$k1;
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

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->v3()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->p3()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->u3()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->t3()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->s3()Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k1;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
