.class Lcom/vivo/speechsdk/module/security/SecurityModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/security/SecurityModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/a<",
        "Lcom/vivo/speechsdk/module/api/security/ISignTool;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/security/SecurityModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/security/SecurityModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/security/SecurityModule$a;->a:Lcom/vivo/speechsdk/module/security/SecurityModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/security/SecurityModule$a;->b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/security/ISignTool;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/security/ISignTool;
    .locals 0

    new-instance p1, Lcom/vivo/speechsdk/module/security/a;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/security/a;-><init>()V

    return-object p1
.end method
