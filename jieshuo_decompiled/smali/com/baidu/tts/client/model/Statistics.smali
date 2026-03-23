.class public Lcom/baidu/tts/client/model/Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static isStatistics:Z = true


# instance fields
.field private a:Lo1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo1/b;

    invoke-direct {v0, p1}, Lo1/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/tts/client/model/Statistics;->a:Lo1/b;

    return-void
.end method

.method public static setEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    return-void
.end method


# virtual methods
.method public start()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/Statistics;->a:Lo1/b;

    invoke-virtual {v0}, Lo1/b;->a()V

    const/4 v0, 0x0

    return v0
.end method

.method public stop()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/Statistics;->a:Lo1/b;

    invoke-virtual {v0}, Lo1/b;->b()V

    const/4 v0, 0x0

    return v0
.end method
