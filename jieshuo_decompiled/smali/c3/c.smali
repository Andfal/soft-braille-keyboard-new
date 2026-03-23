.class public final Lc3/c;
.super Lc3/a;
.source "SourceFile"


# instance fields
.field final synthetic e:Ls2/a;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Z


# direct methods
.method public constructor <init>(Ls2/a;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lc3/c;->e:Ls2/a;

    iput-object p2, p0, Lc3/c;->f:Ljava/lang/String;

    iput-boolean p3, p0, Lc3/c;->g:Z

    invoke-direct {p0, p4, p5}, Lc3/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-object v0, p0, Lc3/c;->e:Ls2/a;

    invoke-interface {v0}, Ls2/a;->a()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0
.end method
