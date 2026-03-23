.class public final enum Lo/p$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lo/p$a;

.field public static final enum b:Lo/p$a;

.field public static final enum c:Lo/p$a;

.field public static final enum d:Lo/p$a;

.field public static final enum e:Lo/p$a;

.field public static final enum f:Lo/p$a;

.field private static final synthetic g:[Lo/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lo/p$a;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/p$a;->a:Lo/p$a;

    new-instance v1, Lo/p$a;

    const-string v3, "END_SIMPLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lo/p$a;->b:Lo/p$a;

    new-instance v3, Lo/p$a;

    const-string v5, "END_REPLACED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lo/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lo/p$a;->c:Lo/p$a;

    new-instance v5, Lo/p$a;

    const-string v7, "END_MOVED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lo/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lo/p$a;->d:Lo/p$a;

    new-instance v7, Lo/p$a;

    const-string v9, "END_CLOBBERED_BY_PREV"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lo/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lo/p$a;->e:Lo/p$a;

    new-instance v9, Lo/p$a;

    const-string v11, "END_CLOBBERED_BY_NEXT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lo/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lo/p$a;->f:Lo/p$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lo/p$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lo/p$a;->g:[Lo/p$a;

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

.method public static valueOf(Ljava/lang/String;)Lo/p$a;
    .locals 1

    const-class v0, Lo/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/p$a;

    return-object p0
.end method

.method public static values()[Lo/p$a;
    .locals 1

    sget-object v0, Lo/p$a;->g:[Lo/p$a;

    invoke-virtual {v0}, [Lo/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/p$a;

    return-object v0
.end method
