.class public interface abstract Lcom/nirenr/talkman/util/Music$PlayList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/util/Music;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayList"
.end annotation


# virtual methods
.method public abstract getNameList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUrlList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasPrevious()Z
.end method

.method public abstract isOk()Z
.end method

.method public abstract length()I
.end method

.method public abstract next()V
.end method

.method public abstract previous()V
.end method

.method public abstract setIdx(I)V
.end method
