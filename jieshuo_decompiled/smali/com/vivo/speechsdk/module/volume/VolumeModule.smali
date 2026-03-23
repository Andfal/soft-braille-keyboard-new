.class public Lcom/vivo/speechsdk/module/volume/VolumeModule;
.super Lcom/vivo/speechsdk/common/module/AbsModule;
.source "SourceFile"


# annotations
.annotation runtime Lcom/vivo/speechsdk/common/module/ModuleAnno;
.end annotation


# instance fields
.field private final a:Lcom/vivo/speechsdk/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/b/a<",
            "Lcom/vivo/speechsdk/module/api/volume/IVolumeCalculater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/common/module/AbsModule;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/volume/VolumeModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/volume/VolumeModule$a;-><init>(Lcom/vivo/speechsdk/module/volume/VolumeModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/volume/VolumeModule;->a:Lcom/vivo/speechsdk/b/a;

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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/volume/VolumeModule;->a:Lcom/vivo/speechsdk/b/a;

    return-object v0
.end method
