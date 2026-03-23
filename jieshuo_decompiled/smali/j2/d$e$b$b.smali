.class Lj2/d$e$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/d$e$b;->onFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lj2/d$e$b;


# direct methods
.method constructor <init>(Lj2/d$e$b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj2/d$e$b$b;->b:Lj2/d$e$b;

    iput-object p2, p0, Lj2/d$e$b$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lj2/d;->v()I

    move-result v0

    iget-object v1, p0, Lj2/d$e$b$b;->b:Lj2/d$e$b;

    invoke-static {v1}, Lj2/d$e$b;->a(Lj2/d$e$b;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lj2/d$e$b$b;->b:Lj2/d$e$b;

    iget-object v0, v0, Lj2/d$e$b;->e:Lj2/d$e;

    iget-object v0, v0, Lj2/d$e;->l:Lj2/d;

    invoke-static {v0}, Lj2/d;->d(Lj2/d;)Lcom/nirenr/talkman/TextToSpeakListener;

    move-result-object v0

    iget-object v1, p0, Lj2/d$e$b$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/TextToSpeakListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
