.class public final Lv/h;
.super Lv/o;
.source "SourceFile"


# static fields
.field public static final b:Lv/h;

.field public static final c:Lv/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lv/h;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lv/h;-><init>(J)V

    sput-object v0, Lv/h;->b:Lv/h;

    new-instance v0, Lv/h;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lv/h;-><init>(J)V

    sput-object v0, Lv/h;->c:Lv/h;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lv/o;-><init>(J)V

    return-void
.end method

.method public static j(J)Lv/h;
    .locals 1

    new-instance v0, Lv/h;

    invoke-direct {v0, p0, p1}, Lv/h;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lv/o;->i()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "double"

    return-object v0
.end method

.method public getType()Lw/c;
    .locals 1

    sget-object v0, Lw/c;->l:Lw/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lv/o;->i()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "double{0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lx/i;->i(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
