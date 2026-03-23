.class Lg0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lg0/f;


# direct methods
.method constructor <init>(Lg0/f;)V
    .locals 0

    iput-object p1, p0, Lg0/g;->a:Lg0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postWithHttps start Thread id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/d;->b(Ljava/lang/String;)V

    new-instance v0, Lg0/j;

    iget-object v1, p0, Lg0/g;->a:Lg0/f;

    invoke-static {v1}, Lg0/f;->a(Lg0/f;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lg0/j;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lg0/g;->a:Lg0/f;

    invoke-static {v1}, Lg0/f;->f(Lg0/f;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg0/j;->b(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg0/g;->a:Lg0/f;

    invoke-static {v1, v0}, Lg0/f;->c(Lg0/f;Ljava/lang/String;)V

    return-void
.end method
