.class public abstract Lq/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/r;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq/p;->a:I

    return-void
.end method


# virtual methods
.method public abstract d(Lq/m;Lx/a;II)I
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lq/p;->a:I

    return v0
.end method
