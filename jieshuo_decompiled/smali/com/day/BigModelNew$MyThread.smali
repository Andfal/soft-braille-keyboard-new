.class Lcom/day/BigModelNew$MyThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/day/BigModelNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/day/BigModelNew;

.field private webSocket:Ly2/f0;


# direct methods
.method public constructor <init>(Lcom/day/BigModelNew;Ly2/f0;)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$MyThread;->this$0:Lcom/day/BigModelNew;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/day/BigModelNew$MyThread;->webSocket:Ly2/f0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "text"

    const-string v1, "user"

    const-string v2, "image"

    :try_start_0
    new-instance v3, Lc/e;

    invoke-direct {v3}, Lc/e;-><init>()V

    new-instance v4, Lc/e;

    invoke-direct {v4}, Lc/e;-><init>()V

    const-string v5, "app_id"

    const-string v6, "58da0ff1"

    invoke-virtual {v4, v5, v6}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "uid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lc/e;

    invoke-direct {v5}, Lc/e;-><init>()V

    new-instance v6, Lc/e;

    invoke-direct {v6}, Lc/e;-><init>()V

    const-string v7, "domain"

    invoke-virtual {v6, v7, v2}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "temperature"

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "max_tokens"

    const/16 v8, 0x1000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "auditing"

    const-string v8, "default"

    invoke-virtual {v6, v7, v8}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "chat"

    invoke-virtual {v5, v7, v6}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lc/e;

    invoke-direct {v6}, Lc/e;-><init>()V

    new-instance v7, Lc/e;

    invoke-direct {v7}, Lc/e;-><init>()V

    new-instance v8, Lc/b;

    invoke-direct {v8}, Lc/b;-><init>()V

    new-instance v9, Lcom/day/BigModelNew$RoleContent;

    iget-object v10, p0, Lcom/day/BigModelNew$MyThread;->this$0:Lcom/day/BigModelNew;

    invoke-direct {v9, v10}, Lcom/day/BigModelNew$RoleContent;-><init>(Lcom/day/BigModelNew;)V

    iput-object v1, v9, Lcom/day/BigModelNew$RoleContent;->role:Ljava/lang/String;

    iget-object v10, p0, Lcom/day/BigModelNew$MyThread;->this$0:Lcom/day/BigModelNew;

    invoke-static {v10}, Lcom/day/BigModelNew;->a(Lcom/day/BigModelNew;)[B

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/day/BigModelNew$RoleContent;->content:Ljava/lang/String;

    iput-object v2, v9, Lcom/day/BigModelNew$RoleContent;->content_type:Ljava/lang/String;

    invoke-static {v9}, Lc/a;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lc/b;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/day/BigModelNew;->historyList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/day/BigModelNew$RoleContent;

    iget-object v9, p0, Lcom/day/BigModelNew$MyThread;->this$0:Lcom/day/BigModelNew;

    invoke-direct {v2, v9}, Lcom/day/BigModelNew$RoleContent;-><init>(Lcom/day/BigModelNew;)V

    iput-object v1, v2, Lcom/day/BigModelNew$RoleContent;->role:Ljava/lang/String;

    const-string v1, "\u63cf\u8ff0\u56fe\u7247"

    iput-object v1, v2, Lcom/day/BigModelNew$RoleContent;->content:Ljava/lang/String;

    sget-object v1, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v1, v2, Lcom/day/BigModelNew$RoleContent;->content:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    :cond_0
    iput-object v0, v2, Lcom/day/BigModelNew$RoleContent;->content_type:Ljava/lang/String;

    invoke-static {v2}, Lc/a;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Lc/b;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/day/BigModelNew;->historyList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0, v8}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-virtual {v6, v0, v7}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "header"

    invoke-virtual {v3, v0, v4}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "parameter"

    invoke-virtual {v3, v0, v5}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "payload"

    invoke-virtual {v3, v0, v6}, Lc/e;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/day/BigModelNew$MyThread;->webSocket:Ly2/f0;

    invoke-virtual {v3}, Lc/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ly2/f0;->send(Ljava/lang/String;)Z

    :cond_1
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/day/BigModelNew$MyThread;->this$0:Lcom/day/BigModelNew;

    invoke-static {v0}, Lcom/day/BigModelNew;->c(Lcom/day/BigModelNew;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/day/BigModelNew$MyThread;->webSocket:Ly2/f0;

    const-string v1, ""

    const/16 v2, 0x3e8

    invoke-interface {v0, v2, v1}, Ly2/f0;->close(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
