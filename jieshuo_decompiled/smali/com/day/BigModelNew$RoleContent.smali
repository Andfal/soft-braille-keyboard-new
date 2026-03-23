.class Lcom/day/BigModelNew$RoleContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/day/BigModelNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleContent"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field content_type:Ljava/lang/String;

.field role:Ljava/lang/String;

.field final synthetic this$0:Lcom/day/BigModelNew;


# direct methods
.method constructor <init>(Lcom/day/BigModelNew;)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$RoleContent;->this$0:Lcom/day/BigModelNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/day/BigModelNew$RoleContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/day/BigModelNew$RoleContent;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/day/BigModelNew$RoleContent;->role:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$RoleContent;->content:Ljava/lang/String;

    return-void
.end method

.method public setContent_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$RoleContent;->content_type:Ljava/lang/String;

    return-void
.end method

.method public setRole(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$RoleContent;->role:Ljava/lang/String;

    return-void
.end method
