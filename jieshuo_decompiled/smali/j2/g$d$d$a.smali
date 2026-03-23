.class Lj2/g$d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/g$d$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lj2/g$d$d;


# direct methods
.method constructor <init>(Lj2/g$d$d;)V
    .locals 0

    iput-object p1, p0, Lj2/g$d$d$a;->a:Lj2/g$d$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lj2/g$d$d$a;->a:Lj2/g$d$d;

    iget-object v1, v0, Lj2/g$d$d;->f:Lj2/g$d;

    iget-wide v2, v0, Lj2/g$d$d;->c:J

    iget-wide v4, v0, Lj2/g$d$d;->d:J

    iget-object v6, v0, Lj2/g$d$d;->b:Ljava/util/Set;

    invoke-virtual/range {v1 .. v6}, Lj2/g$d;->i(JJLjava/util/Set;)Z

    return-void
.end method
