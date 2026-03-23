.class public abstract Lv/x;
.super Lv/a;
.source "SourceFile"

# interfaces
.implements Lw/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lv/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    invoke-interface {p0}, Lw/d;->getType()Lw/c;

    move-result-object v0

    invoke-virtual {v0}, Lw/c;->b()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 1

    invoke-interface {p0}, Lw/d;->getType()Lw/c;

    move-result-object v0

    invoke-virtual {v0}, Lw/c;->c()I

    move-result v0

    return v0
.end method
