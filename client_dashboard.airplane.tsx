import { Stack, Table, Text, Title, useComponentState, Chart } from "@airplane/views";
import airplane from "airplane";

const ClientDashboard = () => {
  const customersState = useComponentState();
  // const selectedCustomer = customersState.selectedRow;
  console.log('trying to log somethings');
  const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

  return (
    <Stack>
      <Title>Client Snowflake Dashboard</Title>
      <Text>This is a custom Snowflake dashboard.</Text>
      <Table 
        title="Clients" 
        task="list_clients" 
        hiddenColumns={['ID', 'CLIENT_ID']} 
        columns={[
          { accessor: "FIRST_NAME", label: "FIRST NAME", canEdit: true }, 
          { accessor: "LAST_NAME", label: "LAST NAME", canEdit: true },
          { accessor: "PHONE_1", label: "PHONE 1" },
          { accessor: "PHONE_2", label: "PHONE 2" },
          { accessor: "SUBSCRIPTION_DATE", label: "SUB DATE" }
        ]}
        rowActions={{ slug: "update_client", label: "Update", rowTransform: (row) => ({
          id: row.ID,
          first_name: row.FIRST_NAME,
          last_name: row.LAST_NAME
        }) }} 
        />
        <Chart
          type="line"
          title="Client subscription by month"
          xAxis="months"
          xAxisTitle="Month"
          yAxisTitle="No. of Subscriptions"
          task="count_subs_by_month"
          outputTransform={(data) => ({ 
            months, 
            Client_Subscriptions: months.map((month) => data?.Q1?.[0]?.[month.toUpperCase()]) 
          })}
        />
    </Stack>
  );
};

export default airplane.view(
  {
    slug: "client_dashboard",
    name: "client_dashboard",
  },
  ClientDashboard
);
