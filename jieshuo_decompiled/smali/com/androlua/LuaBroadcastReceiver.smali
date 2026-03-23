.class public Lcom/androlua/LuaBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;
    }
.end annotation


# instance fields
.field private mRlt:Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;


# direct methods
.method public constructor <init>(Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/androlua/LuaBroadcastReceiver;->mRlt:Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaBroadcastReceiver;->mRlt:Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;

    invoke-interface {v0, p1, p2}, Lcom/androlua/LuaBroadcastReceiver$OnReceiveListerer;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
