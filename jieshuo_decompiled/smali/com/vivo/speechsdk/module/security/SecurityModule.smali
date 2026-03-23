.class public Lcom/vivo/speechsdk/module/security/SecurityModule;
.super Lcom/vivo/speechsdk/common/module/AbsModule;
.source "SourceFile"


# annotations
.annotation runtime Lcom/vivo/speechsdk/common/module/ModuleAnno;
    lazyLoad = true
.end annotation


# instance fields
.field private final a:Lcom/vivo/speechsdk/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/b/a<",
            "Lcom/vivo/speechsdk/module/api/security/ISignTool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/common/module/AbsModule;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/security/SecurityModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/security/SecurityModule$a;-><init>(Lcom/vivo/speechsdk/module/security/SecurityModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/security/SecurityModule;->a:Lcom/vivo/speechsdk/b/a;

    return-void
.end method


# virtual methods
.method public getFactory()Lcom/vivo/speechsdk/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vivo/speechsdk/b/b;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/module/security/SecurityModule;->a:Lcom/vivo/speechsdk/b/a;

    return-object v0
.end method
