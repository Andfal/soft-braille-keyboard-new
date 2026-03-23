.class Lj2/g$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/g$d;->h(JJLjava/util/Set;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/util/Set;

.field final synthetic d:Lj2/g$d;


# direct methods
.method constructor <init>(Lj2/g$d;JJLjava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lj2/g$d$b;->d:Lj2/g$d;

    iput-wide p2, p0, Lj2/g$d$b;->a:J

    iput-wide p4, p0, Lj2/g$d$b;->b:J

    iput-object p6, p0, Lj2/g$d$b;->c:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lj2/g$d$b;->d:Lj2/g$d;

    iget-wide v1, p0, Lj2/g$d$b;->a:J

    iget-wide v3, p0, Lj2/g$d$b;->b:J

    iget-object v5, p0, Lj2/g$d$b;->c:Ljava/util/Set;

    invoke-virtual/range {v0 .. v5}, Lj2/g$d;->i(JJLjava/util/Set;)Z

    return-void
.end method
