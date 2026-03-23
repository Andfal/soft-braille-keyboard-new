.class Lcom/vivo/speechsdk/a/a$a;
.super Lcom/vivo/speechsdk/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/vivo/speechsdk/a/a;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/a$a;->d:Lcom/vivo/speechsdk/a/a;

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a$a;->d:Lcom/vivo/speechsdk/a/a;

    invoke-static {v0, p1, p2}, Lcom/vivo/speechsdk/a/a;->a(Lcom/vivo/speechsdk/a/a;ILandroid/os/Bundle;)V

    return-void
.end method

.method public b(ILandroid/os/Bundle;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
