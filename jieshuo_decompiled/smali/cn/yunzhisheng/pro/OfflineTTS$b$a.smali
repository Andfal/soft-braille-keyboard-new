.class Lcn/yunzhisheng/pro/OfflineTTS$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yunzhisheng/pro/OfflineTTS$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/yunzhisheng/pro/OfflineTTS$b;


# direct methods
.method constructor <init>(Lcn/yunzhisheng/pro/OfflineTTS$b;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS$b$a;->a:Lcn/yunzhisheng/pro/OfflineTTS$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS$b$a;->a:Lcn/yunzhisheng/pro/OfflineTTS$b;

    iget-object v0, v0, Lcn/yunzhisheng/pro/OfflineTTS$b;->b:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-static {v0}, Lcn/yunzhisheng/pro/OfflineTTS;->b(Lcn/yunzhisheng/pro/OfflineTTS;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcn/yunzhisheng/pro/OfflineTTS$b$a;->a:Lcn/yunzhisheng/pro/OfflineTTS$b;

    iget-object v2, v2, Lcn/yunzhisheng/pro/OfflineTTS$b;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/yunzhisheng/pro/OfflineTTS;->d(Lcn/yunzhisheng/pro/OfflineTTS;Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    return-void
.end method
