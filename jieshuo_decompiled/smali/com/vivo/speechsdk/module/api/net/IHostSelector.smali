.class public interface abstract Lcom/vivo/speechsdk/module/api/net/IHostSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract backupHost()Ljava/lang/String;
.end method

.method public abstract backupUrl()Ljava/lang/String;
.end method

.method public abstract defaultHost()Ljava/lang/String;
.end method

.method public abstract defaultUrl()Ljava/lang/String;
.end method

.method public abstract hosts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
