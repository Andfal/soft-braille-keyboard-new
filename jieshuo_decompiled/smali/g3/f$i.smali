.class public final Lg3/f$i;
.super Lc3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg3/f;->f0(ILg3/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Lg3/f;

.field final synthetic h:I

.field final synthetic i:Lg3/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLg3/f;ILg3/b;)V
    .locals 0

    iput-object p1, p0, Lg3/f$i;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lg3/f$i;->f:Z

    iput-object p5, p0, Lg3/f$i;->g:Lg3/f;

    iput p6, p0, Lg3/f$i;->h:I

    iput-object p7, p0, Lg3/f$i;->i:Lg3/b;

    invoke-direct {p0, p3, p4}, Lc3/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 3

    iget-object v0, p0, Lg3/f$i;->g:Lg3/f;

    invoke-static {v0}, Lg3/f;->j(Lg3/f;)Lg3/l;

    move-result-object v0

    iget v1, p0, Lg3/f$i;->h:I

    iget-object v2, p0, Lg3/f$i;->i:Lg3/b;

    invoke-interface {v0, v1, v2}, Lg3/l;->a(ILg3/b;)V

    iget-object v0, p0, Lg3/f$i;->g:Lg3/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg3/f$i;->g:Lg3/f;

    invoke-static {v1}, Lg3/f;->e(Lg3/f;)Ljava/util/Set;

    move-result-object v1

    iget v2, p0, Lg3/f$i;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Ln2/m;->a:Ln2/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
