.class public final Lv/l;
.super Lv/n;
.source "SourceFile"


# static fields
.field private static final b:[Lv/l;

.field public static final c:Lv/l;

.field public static final d:Lv/l;

.field public static final e:Lv/l;

.field public static final f:Lv/l;

.field public static final g:Lv/l;

.field public static final h:Lv/l;

.field public static final i:Lv/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1ff

    new-array v0, v0, [Lv/l;

    sput-object v0, Lv/l;->b:[Lv/l;

    const/4 v0, -0x1

    invoke-static {v0}, Lv/l;->k(I)Lv/l;

    move-result-object v0

    sput-object v0, Lv/l;->c:Lv/l;

    const/4 v0, 0x0

    invoke-static {v0}, Lv/l;->k(I)Lv/l;

    move-result-object v0

    sput-object v0, Lv/l;->d:Lv/l;

    const/4 v0, 0x1

    invoke-static {v0}, Lv/l;->k(I)Lv/l;

    move-result-object v0

    sput-object v0, Lv/l;->e:Lv/l;

    const/4 v0, 0x2

    invoke-static {v0}, Lv/l;->k(I)Lv/l;

    move-result-object v0

    sput-object v0, Lv/l;->f:Lv/l;

    const/4 v0, 0x3

    invoke-static {v0}, Lv/l;->k(I)Lv/l;

    move-result-object v0

    sput-object v0, Lv/l;->g:Lv/l;

    const/4 v0, 0x4

    invoke-static {v0}, Lv/l;->k(I)Lv/l;

    move-result-object v0

    sput-object v0, Lv/l;->h:Lv/l;

    const/4 v0, 0x5

    invoke-static {v0}, Lv/l;->k(I)Lv/l;

    move-result-object v0

    sput-object v0, Lv/l;->i:Lv/l;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lv/n;-><init>(I)V

    return-void
.end method

.method public static k(I)Lv/l;
    .locals 4

    const v0, 0x7fffffff

    and-int/2addr v0, p0

    sget-object v1, Lv/l;->b:[Lv/l;

    array-length v2, v1

    rem-int/2addr v0, v2

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lv/l;->j()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    new-instance v2, Lv/l;

    invoke-direct {v2, p0}, Lv/l;-><init>(I)V

    aput-object v2, v1, v0

    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lv/n;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "int"

    return-object v0
.end method

.method public getType()Lw/c;
    .locals 1

    sget-object v0, Lw/c;->n:Lw/c;

    return-object v0
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, Lv/n;->h()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lv/n;->h()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int{0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
