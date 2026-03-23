.class Lj2/d$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/d$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lj2/d$e;


# direct methods
.method constructor <init>(Lj2/d$e;)V
    .locals 0

    iput-object p1, p0, Lj2/d$e$a;->b:Lj2/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj2/d;->v()I

    move-result p1

    iput p1, p0, Lj2/d$e$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lj2/d;->v()I

    move-result v0

    iget v1, p0, Lj2/d$e$a;->a:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lj2/d$e$a;->b:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    invoke-static {v0}, Lj2/d;->h(Lj2/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj2/d$e$a;->b:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    invoke-static {v0}, Lj2/d;->h(Lj2/d;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lj2/d;->U(Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lj2/d$e$a;->b:Lj2/d$e;

    invoke-static {v0}, Lj2/d$e;->b(Lj2/d$e;)La/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj2/d$e$a;->b:Lj2/d$e;

    invoke-static {v0}, Lj2/d$e;->b(Lj2/d$e;)La/f;

    move-result-object v0

    invoke-virtual {v0}, La/f;->closeAudioOut()V

    :cond_1
    iget-object v0, p0, Lj2/d$e$a;->b:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    invoke-static {v0}, Lj2/d;->d(Lj2/d;)Lcom/nirenr/talkman/TextToSpeakListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nirenr/talkman/TextToSpeakListener;->onSpeakStop()V

    iget-object v0, p0, Lj2/d$e$a;->b:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    invoke-static {v0, v1}, Lj2/d;->p(Lj2/d;Z)V

    :cond_2
    return-void
.end method
