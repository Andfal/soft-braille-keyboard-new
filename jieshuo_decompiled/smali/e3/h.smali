.class public final Le3/h;
.super Ly2/c0;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:Lm3/g;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLm3/g;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p4, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly2/c0;-><init>()V

    iput-object p1, p0, Le3/h;->b:Ljava/lang/String;

    iput-wide p2, p0, Le3/h;->c:J

    iput-object p4, p0, Le3/h;->d:Lm3/g;

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-wide v0, p0, Le3/h;->c:J

    return-wide v0
.end method

.method public g()Ly2/y;
    .locals 2

    iget-object v0, p0, Le3/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Ly2/y;->g:Ly2/y$a;

    invoke-virtual {v1, v0}, Ly2/y$a;->b(Ljava/lang/String;)Ly2/y;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public i()Lm3/g;
    .locals 1

    iget-object v0, p0, Le3/h;->d:Lm3/g;

    return-object v0
.end method
