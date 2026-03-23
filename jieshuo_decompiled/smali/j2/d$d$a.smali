.class Lj2/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/d$d;->onFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/d$d;


# direct methods
.method constructor <init>(Lj2/d$d;)V
    .locals 0

    iput-object p1, p0, Lj2/d$d$a;->a:Lj2/d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lj2/d$d$a;->a:Lj2/d$d;

    iget-object v0, v0, Lj2/d$d;->d:Lj2/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj2/d;->p(Lj2/d;Z)V

    iget-object v0, p0, Lj2/d$d$a;->a:Lj2/d$d;

    iget-object v0, v0, Lj2/d$d;->c:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->done()I

    return-void
.end method
