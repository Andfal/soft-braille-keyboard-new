.class public final enum Lc/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/l;

.field public static final enum b:Lc/l;

.field public static final enum c:Lc/l;

.field public static final enum d:Lc/l;

.field public static final enum e:Lc/l;

.field private static final synthetic f:[Lc/l;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lc/l;

    const-string v1, "CamelCase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/l;->a:Lc/l;

    new-instance v1, Lc/l;

    const-string v3, "PascalCase"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/l;->b:Lc/l;

    new-instance v3, Lc/l;

    const-string v5, "SnakeCase"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/l;->c:Lc/l;

    new-instance v5, Lc/l;

    const-string v7, "KebabCase"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc/l;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/l;->d:Lc/l;

    new-instance v7, Lc/l;

    const-string v9, "NoChange"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lc/l;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lc/l;->e:Lc/l;

    const/4 v9, 0x5

    new-array v9, v9, [Lc/l;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lc/l;->f:[Lc/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/l;
    .locals 1

    const-class v0, Lc/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/l;

    return-object p0
.end method

.method public static values()[Lc/l;
    .locals 1

    sget-object v0, Lc/l;->f:[Lc/l;

    invoke-virtual {v0}, [Lc/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/l;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lc/l$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x41

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_1

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    aget-char v0, p1, v4

    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    aput-char v0, p1, v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    aget-char v0, p1, v4

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    aput-char v0, p1, v4

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_3
    return-object p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_5

    if-gt v3, v1, :cond_5

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    if-lez v4, :cond_5

    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_8

    if-gt v3, v1, :cond_8

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    if-lez v4, :cond_8

    const/16 v5, 0x5f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
