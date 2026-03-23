.class Lcom/vivo/speechsdk/module/tracker/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/tracker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/vivo/speechsdk/module/tracker/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/tracker/c;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/tracker/c;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/tracker/c$a;->a:Lcom/vivo/speechsdk/module/tracker/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/vivo/speechsdk/module/tracker/c;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/tracker/c$a;->a:Lcom/vivo/speechsdk/module/tracker/c;

    return-object v0
.end method
