.class public final Ly2/c0$a$a;
.super Ly2/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly2/c0$a;->b(Lm3/g;Ly2/y;J)Ly2/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lm3/g;

.field final synthetic c:Ly2/y;

.field final synthetic d:J


# direct methods
.method constructor <init>(Lm3/g;Ly2/y;J)V
    .locals 0

    iput-object p1, p0, Ly2/c0$a$a;->b:Lm3/g;

    iput-object p2, p0, Ly2/c0$a$a;->c:Ly2/y;

    iput-wide p3, p0, Ly2/c0$a$a;->d:J

    invoke-direct {p0}, Ly2/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-wide v0, p0, Ly2/c0$a$a;->d:J

    return-wide v0
.end method

.method public g()Ly2/y;
    .locals 1

    iget-object v0, p0, Ly2/c0$a$a;->c:Ly2/y;

    return-object v0
.end method

.method public i()Lm3/g;
    .locals 1

    iget-object v0, p0, Ly2/c0$a$a;->b:Lm3/g;

    return-object v0
.end method
