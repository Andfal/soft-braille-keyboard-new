.class Lh2/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/u;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lh2/u;


# direct methods
.method constructor <init>(Lh2/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh2/u$b;->b:Lh2/u;

    iput-object p2, p0, Lh2/u$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/nirenr/talkman/o;->e(Ljava/lang/String;)[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh2/u$b;->b:Lh2/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh2/u;->b(Lh2/u;Z)V

    iget-object v0, p0, Lh2/u$b;->b:Lh2/u;

    invoke-virtual {v0, p1}, Lh2/u;->setOcrItems([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    iget-object p1, p0, Lh2/u$b;->b:Lh2/u;

    invoke-static {p1}, Lh2/u;->a(Lh2/u;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lh2/u$b;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh2/u$b;->b:Lh2/u;

    invoke-static {p1}, Lh2/u;->a(Lh2/u;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u52a0\u8f7d\u5e03\u5c40\u51fa\u9519"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lh2/u$b;->b:Lh2/u;

    invoke-virtual {p1}, Lh2/u;->h()V

    return-void
.end method
