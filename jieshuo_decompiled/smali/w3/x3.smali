.class public final Lw3/x3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lw3/x3;

.field public static final c:Lw3/x3;

.field public static final d:Lw3/x3;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lw3/x3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lw3/x3;-><init>(I)V

    sput-object v0, Lw3/x3;->b:Lw3/x3;

    new-instance v0, Lw3/x3;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lw3/x3;-><init>(I)V

    sput-object v0, Lw3/x3;->c:Lw3/x3;

    new-instance v0, Lw3/x3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lw3/x3;-><init>(I)V

    sput-object v0, Lw3/x3;->d:Lw3/x3;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lw3/x3;->a:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lw3/x3;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "DOUBLE_MARK"

    goto :goto_0

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "NULL_VALUE"

    goto :goto_0

    :cond_2
    const-string v0, "NOT_FOUND"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
