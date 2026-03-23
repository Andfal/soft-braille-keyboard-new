.class public final Lf3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/a$a;
    }
.end annotation


# static fields
.field public static final c:Lf3/a$a;


# instance fields
.field private a:J

.field private final b:Lm3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf3/a$a;-><init>(Lt2/d;)V

    sput-object v0, Lf3/a;->c:Lf3/a$a;

    return-void
.end method

.method public constructor <init>(Lm3/g;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/a;->b:Lm3/g;

    const/high16 p1, 0x40000

    int-to-long v0, p1

    iput-wide v0, p0, Lf3/a;->a:J

    return-void
.end method


# virtual methods
.method public final a()Ly2/v;
    .locals 3

    new-instance v0, Ly2/v$a;

    invoke-direct {v0}, Ly2/v$a;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lf3/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ly2/v$a;->e()Ly2/v;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0, v1}, Ly2/v$a;->b(Ljava/lang/String;)Ly2/v$a;

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lf3/a;->b:Lm3/g;

    iget-wide v1, p0, Lf3/a;->a:J

    invoke-interface {v0, v1, v2}, Lm3/g;->w(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lf3/a;->a:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lf3/a;->a:J

    return-object v0
.end method
