.class public final Ld3/e$d;
.super Ll3/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld3/e;->x(Ld3/Exchange;)Ll3/d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Ld3/Exchange;

.field final synthetic e:Lm3/g;

.field final synthetic f:Lm3/f;


# direct methods
.method constructor <init>(Ld3/Exchange;Lm3/g;Lm3/f;ZLm3/g;Lm3/f;)V
    .locals 0

    iput-object p1, p0, Ld3/e$d;->d:Ld3/Exchange;

    iput-object p2, p0, Ld3/e$d;->e:Lm3/g;

    iput-object p3, p0, Ld3/e$d;->f:Lm3/f;

    invoke-direct {p0, p4, p5, p6}, Ll3/d$d;-><init>(ZLm3/g;Lm3/f;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    iget-object v0, p0, Ld3/e$d;->d:Ld3/Exchange;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ld3/Exchange;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method
