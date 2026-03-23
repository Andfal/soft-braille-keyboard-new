.class public Lcom/vivo/speechsdk/d/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/vivo/speechsdk/api/IEngine;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/c$c;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/c$c;->b:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/d/c$c;)Lcom/vivo/speechsdk/api/IEngine;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/c$c;->a:Lcom/vivo/speechsdk/api/IEngine;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Looper;)Lcom/vivo/speechsdk/d/c$c;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/c$c;->b:Landroid/os/Looper;

    return-object p0
.end method

.method public a(Lcom/vivo/speechsdk/api/IEngine;)Lcom/vivo/speechsdk/d/c$c;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/c$c;->a:Lcom/vivo/speechsdk/api/IEngine;

    return-object p0
.end method

.method public a()Lcom/vivo/speechsdk/d/c;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/d/c;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/d/c;-><init>(Lcom/vivo/speechsdk/d/c$c;)V

    return-object v0
.end method
