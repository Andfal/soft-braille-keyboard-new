.class Lcom/vivo/speechsdk/b/h/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/b/h/c;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/h/c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/h/c$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/c;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vivo/speechsdk/b/h/c;->a(Z)Z

    return-void
.end method
