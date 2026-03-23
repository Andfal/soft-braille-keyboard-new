.class Lcom/nirenr/talkman/TalkManAccessibilityService$d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$d0;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService$d0;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$d0;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d0$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$d0;

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d0$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d0$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$d0;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$d0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d0$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$d0;

    iget-object v2, v2, Lcom/nirenr/talkman/TalkManAccessibilityService$d0;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07045a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d0$a;->b:Lcom/nirenr/talkman/TalkManAccessibilityService$d0;

    iget-object v2, v2, Lcom/nirenr/talkman/TalkManAccessibilityService$d0;->b:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d0$a;->a:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method
