.class public final Lv/q;
.super Lv/o;
.source "SourceFile"


# static fields
.field public static final b:Lv/q;

.field public static final c:Lv/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lv/q;->j(J)Lv/q;

    move-result-object v0

    sput-object v0, Lv/q;->b:Lv/q;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lv/q;->j(J)Lv/q;

    move-result-object v0

    sput-object v0, Lv/q;->c:Lv/q;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lv/o;-><init>(J)V

    return-void
.end method

.method public static j(J)Lv/q;
    .locals 1

    new-instance v0, Lv/q;

    invoke-direct {v0, p0, p1}, Lv/q;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lv/o;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "long"

    return-object v0
.end method

.method public getType()Lw/c;
    .locals 1

    sget-object v0, Lw/c;->o:Lw/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lv/o;->i()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long{0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lx/i;->i(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
