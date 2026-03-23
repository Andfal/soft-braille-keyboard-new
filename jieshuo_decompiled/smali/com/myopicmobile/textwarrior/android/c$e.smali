.class Lcom/myopicmobile/textwarrior/android/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/myopicmobile/textwarrior/android/c;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$e;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$e;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->d(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/c$k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/c$k;->q(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$e;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->caretOnEOF()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$e;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$e;->a:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ld2/f;->h(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$e;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->i(Lcom/myopicmobile/textwarrior/android/c;)Ljava/lang/Runnable;

    move-result-object v1

    sget-wide v2, Lcom/myopicmobile/textwarrior/android/c;->SCROLL_PERIOD:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
