.class Lcom/vivo/speechsdk/module/volume/VolumeModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/volume/VolumeModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/volume/VolumeModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/volume/VolumeModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/volume/VolumeModule$a;->a:Lcom/vivo/speechsdk/module/volume/VolumeModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lcom/vivo/speechsdk/module/volume/a;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/volume/a;-><init>()V

    return-object p1
.end method
