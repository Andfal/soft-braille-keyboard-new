.class Lcom/vivo/speechsdk/module/tracker/TrackerModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/tracker/TrackerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/a<",
        "Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/tracker/TrackerModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/tracker/TrackerModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/tracker/TrackerModule$a;->a:Lcom/vivo/speechsdk/module/tracker/TrackerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/tracker/TrackerModule$a;->b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;
    .locals 0

    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/b;->a()Lcom/vivo/speechsdk/module/tracker/b;

    move-result-object p1

    return-object p1
.end method
