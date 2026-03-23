.class public Lcom/unisound/sdk/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "filterName"

.field public static final b:Ljava/lang/String; = "returnType"

.field public static final c:Ljava/lang/String; = "city"

.field public static final d:Ljava/lang/String; = "gps"

.field public static final e:Ljava/lang/String; = "time"

.field public static final f:Ljava/lang/String; = "scenario"

.field public static final g:Ljava/lang/String; = "screen"

.field public static final h:Ljava/lang/String; = "dpi"

.field public static final i:Ljava/lang/String; = "history"

.field public static final j:Ljava/lang/String; = "udid"

.field public static final k:Ljava/lang/String; = "ver"

.field public static final l:Ljava/lang/String; = "appver"

.field public static m:Ljava/lang/String; = "http://scv2.hivoice.cn/service/iss"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "iss.getTalk"

    iput-object v0, p0, Lcom/unisound/sdk/aa;->n:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/unisound/sdk/aa;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/aa;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->u:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/unisound/sdk/aa;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/sdk/aa;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "iss.getTalk"

    iput-object v0, p0, Lcom/unisound/sdk/aa;->n:Ljava/lang/String;

    const-string v0, "2.0"

    iput-object v0, p0, Lcom/unisound/sdk/aa;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/aa;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->u:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/unisound/sdk/aa;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/sdk/aa;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/unisound/sdk/aa;->D:Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/sdk/aa;->p:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/aa;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "iss.getTalk"

    iput-object v1, v0, Lcom/unisound/sdk/aa;->n:Ljava/lang/String;

    const-string v1, "2.0"

    iput-object v1, v0, Lcom/unisound/sdk/aa;->o:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/unisound/sdk/aa;->p:Ljava/lang/String;

    iput-object v1, v0, Lcom/unisound/sdk/aa;->q:Ljava/lang/String;

    iput-object v1, v0, Lcom/unisound/sdk/aa;->r:Ljava/lang/String;

    iput-object v1, v0, Lcom/unisound/sdk/aa;->s:Ljava/lang/String;

    iput-object v1, v0, Lcom/unisound/sdk/aa;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/unisound/sdk/aa;->u:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unisound/sdk/aa;->a(J)Ljava/lang/String;

    iput-object v1, v0, Lcom/unisound/sdk/aa;->C:Ljava/lang/String;

    iput-object v1, v0, Lcom/unisound/sdk/aa;->D:Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lcom/unisound/sdk/aa;->p:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/unisound/sdk/aa;->q:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/unisound/sdk/aa;->s:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/unisound/sdk/aa;->r:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/unisound/sdk/aa;->t:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/unisound/sdk/aa;->w:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/unisound/sdk/aa;->x:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/unisound/sdk/aa;->u:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/unisound/sdk/aa;->v:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/unisound/sdk/aa;->y:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/unisound/sdk/aa;->z:Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/unisound/sdk/aa;->A:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/unisound/sdk/aa;->B:Ljava/lang/String;

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/aa;->m:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/unisound/sdk/aa;)V
    .locals 1

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->p:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->B:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->t:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->x:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->C:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->z:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->A:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->w:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->r:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aa;->D:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/aa;->y:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/unisound/sdk/aa;->m:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->p:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    invoke-static {p1, p2}, Lcom/unisound/sdk/aa;->a(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/aa;->v:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->p:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->q:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->q:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->o:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->o:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->s:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->s:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->t:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->t:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->r:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->r:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->w:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->w:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->x:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->x:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->u:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->u:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->v:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->y:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "iss.getTalk"

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->z:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->y:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->A:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->z:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->B:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->A:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->C:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->B:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aa;->D:Ljava/lang/String;

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->C:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aa;->D:Ljava/lang/String;

    return-object v0
.end method
