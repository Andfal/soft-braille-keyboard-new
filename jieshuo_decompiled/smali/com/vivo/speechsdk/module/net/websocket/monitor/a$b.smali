.class Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/monitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field final synthetic d:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->d:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;Ljava/lang/String;ZJ)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->d:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->b:Z

    iput-wide p4, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c:J

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c:J

    return-wide v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->b:Z

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c:J

    return-wide v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->b:Z

    return v0
.end method
