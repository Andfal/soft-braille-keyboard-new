.class Lcom/vivo/speechsdk/module/asronline/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/asronline/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/vivo/speechsdk/module/asronline/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/module/asronline/h;-><init>(Lcom/vivo/speechsdk/module/asronline/h$a;)V

    sput-object v0, Lcom/vivo/speechsdk/module/asronline/h$b;->a:Lcom/vivo/speechsdk/module/asronline/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/vivo/speechsdk/module/asronline/h;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/asronline/h$b;->a:Lcom/vivo/speechsdk/module/asronline/h;

    return-object v0
.end method
