.class Lcn/yunzhisheng/pro/OfflineTTS$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yunzhisheng/pro/OfflineTTS;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/yunzhisheng/pro/OfflineTTS;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/pro/OfflineTTS;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS$e;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS$e;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/pro/OfflineTTS;->c(Lcn/yunzhisheng/pro/OfflineTTS;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS$e;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/pro/OfflineTTS;->c(Lcn/yunzhisheng/pro/OfflineTTS;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/yunzhisheng/pro/OfflineTTS;->e(Lcn/yunzhisheng/pro/OfflineTTS;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
