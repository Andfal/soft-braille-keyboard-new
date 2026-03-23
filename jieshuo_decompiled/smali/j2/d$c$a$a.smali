.class Lj2/d$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/d$c$a;->onBusy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/d$c$a;


# direct methods
.method constructor <init>(Lj2/d$c$a;)V
    .locals 0

    iput-object p1, p0, Lj2/d$c$a$a;->a:Lj2/d$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lj2/d$c$a$a;->a:Lj2/d$c$a;

    iget-object v0, v0, Lj2/d$c$a;->b:Lj2/d$c;

    iget-object v0, v0, Lj2/d$c;->c:Lj2/d;

    invoke-static {v0}, Lj2/d;->d(Lj2/d;)Lcom/nirenr/talkman/TextToSpeakListener;

    move-result-object v0

    const-string v1, "busy"

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/TextToSpeakListener;->onError(Ljava/lang/String;)V

    return-void
.end method
