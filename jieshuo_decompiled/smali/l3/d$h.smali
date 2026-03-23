.class public final Ll3/d$h;
.super Lc3/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll3/d;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Ll3/d;

.field final synthetic h:Ll3/h;

.field final synthetic i:Lm3/h;

.field final synthetic j:Lt2/j;

.field final synthetic k:Lt2/h;

.field final synthetic l:Lt2/j;

.field final synthetic m:Lt2/j;

.field final synthetic n:Lt2/j;

.field final synthetic o:Lt2/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLl3/d;Ll3/h;Lm3/h;Lt2/j;Lt2/h;Lt2/j;Lt2/j;Lt2/j;Lt2/j;)V
    .locals 0

    iput-object p1, p0, Ll3/d$h;->e:Ljava/lang/String;

    iput-boolean p2, p0, Ll3/d$h;->f:Z

    iput-object p5, p0, Ll3/d$h;->g:Ll3/d;

    iput-object p6, p0, Ll3/d$h;->h:Ll3/h;

    iput-object p7, p0, Ll3/d$h;->i:Lm3/h;

    iput-object p8, p0, Ll3/d$h;->j:Lt2/j;

    iput-object p9, p0, Ll3/d$h;->k:Lt2/h;

    iput-object p10, p0, Ll3/d$h;->l:Lt2/j;

    iput-object p11, p0, Ll3/d$h;->m:Lt2/j;

    iput-object p12, p0, Ll3/d$h;->n:Lt2/j;

    iput-object p13, p0, Ll3/d$h;->o:Lt2/j;

    invoke-direct {p0, p3, p4}, Lc3/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public f()J
    .locals 2

    iget-object v0, p0, Ll3/d$h;->g:Ll3/d;

    invoke-virtual {v0}, Ll3/d;->cancel()V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
