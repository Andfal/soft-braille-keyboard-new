.class public abstract Lk0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk0/f<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-interface {p0}, Lk0/f;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lk0/f;->b()Lk0/e;

    move-result-object v1

    invoke-interface {p0}, Lk0/f;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v1, v0, v2}, Lk0/e;->f(Ljava/lang/Object;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method
