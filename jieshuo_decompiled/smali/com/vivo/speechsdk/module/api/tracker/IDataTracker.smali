.class public interface abstract Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setTrackerEnable(Z)V
.end method

.method public abstract upload(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
