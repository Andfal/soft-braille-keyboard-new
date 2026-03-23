.class Lh2/t$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/t;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/t;


# direct methods
.method constructor <init>(Lh2/t;)V
    .locals 0

    iput-object p1, p0, Lh2/t$c;->a:Lh2/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v0}, Lh2/t;->a(Lh2/t;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v2}, Lh2/t;->d(Lh2/t;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v2}, Lh2/t;->b(Lh2/t;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClickableSpan"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v0}, Lh2/t;->d(Lh2/t;)I

    move-result v0

    iget-object v1, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v1}, Lh2/t;->b(Lh2/t;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v0}, Lh2/t;->b(Lh2/t;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v1}, Lh2/t;->d(Lh2/t;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v3}, Lh2/t;->a(Lh2/t;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lh2/t$c;->a:Lh2/t;

    invoke-static {v1}, Lh2/t;->a(Lh2/t;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method
